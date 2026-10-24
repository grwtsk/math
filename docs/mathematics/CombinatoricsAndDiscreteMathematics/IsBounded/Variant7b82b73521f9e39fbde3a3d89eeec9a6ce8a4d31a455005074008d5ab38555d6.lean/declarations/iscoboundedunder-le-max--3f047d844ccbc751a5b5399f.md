# isCoboundedUnder_le_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2074384-42ef-4f38-41c2-bb649217885a",
  "kind": "theorem",
  "lexical_name": "isCoboundedUnder_le_max",
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
  "slug": "iscoboundedunder-le-max--3f047d844ccbc751a5b5399f",
  "source": {
    "blob": "8035e7527d4598572e2c50940cc0b700f58f8da3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 575,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f047d844ccbc751a5b5399f3700e29a14a8841650a813e3f901ffe3b19971f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2074384-42ef-4f38-41c2-bb649217885a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoboundedUnder_le_max [LinearOrder β] {f : Filter α} {u v : α → β}
    (h : f.IsCoboundedUnder (· ≤ ·) u ∨ f.IsCoboundedUnder (· ≤ ·) v) :
    f.IsCoboundedUnder (· ≤ ·) (fun a ↦ max (u a) (v a)) := by
  rcases h with (h' | h') <;>
  · rcases h' with ⟨b, hb⟩
    use b
    intro c hc
    apply hb c
    rw [eventually_map] at hc ⊢
    refine hc.mono (fun _ ↦ ?_)
    simp +contextual only [implies_true, max_le_iff, and_imp]

open Finset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8035e7527d4598572e2c50940cc0b700f58f8da3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
