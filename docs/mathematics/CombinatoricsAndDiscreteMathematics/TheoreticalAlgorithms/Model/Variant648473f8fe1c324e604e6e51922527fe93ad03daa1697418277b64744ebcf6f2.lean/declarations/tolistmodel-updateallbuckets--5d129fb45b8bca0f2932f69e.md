# toListModel_updateAllBuckets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cda13796-65d8-78dd-74d6-352f61693469",
  "kind": "theorem",
  "lexical_name": "toListModel_updateAllBuckets",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "tolistmodel-updateallbuckets--5d129fb45b8bca0f2932f69e",
  "source": {
    "blob": "d94f298e36674840a00580338c5a67133982a1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d129fb45b8bca0f2932f69e5759749ea6efc170fa89f8c3b273a283404f852c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cda13796-65d8-78dd-74d6-352f61693469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toListModel_updateAllBuckets {m : Raw₀ α β} {f : AssocList α β → AssocList α δ}
    {g : List ((a : α) × β a) → List ((a : α) × δ a)}
    (hfg : ∀ {l}, Perm ((f l).toList) (g l.toList))
    (hg : ∀ {l l'}, Perm (g (l ++ l')) (g l ++ g l')) :
    Perm (toListModel (updateAllBuckets m.1.buckets f)) (g (toListModel m.1.2)) := by
  have hg₀ : g [] = [] := by
    rw [← List.length_eq_zero_iff]
    have := (hg (l := []) (l' := [])).length_eq
    rw [List.length_append, List.append_nil] at this
    omega
  rw [updateAllBuckets, toListModel, Array.toList_map, List.flatMap_eq_foldl, List.foldl_map,
    toListModel, List.flatMap_eq_foldl]
  suffices ∀ (l : List (AssocList α β)) (l' : List ((a : α) × δ a)) (l'' : List ((a : α) × β a)),
      Perm (g l'') l' →
      Perm (l.foldl (fun acc a => acc ++ (f a).toList) l')
        (g (l.foldl (fun acc a => acc ++ a.toList) l'')) by
    simpa using this m.1.buckets.toList [] [] (by simp [hg₀])
  rintro l l' l'' h
  induction l generalizing l' l''
  · simpa using h.symm
  next l t ih =>
    simp only [List.foldl_cons]
    apply ih
    exact hg.trans (Perm.append h hfg.symm)

/-! # IsHashSelf -/

namespace IsHashSelf

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variant648473f8fe1c324e604e6e51922527fe93ad03daa1697418277b64744ebcf6f2.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d94f298e36674840a00580338c5a67133982a1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
