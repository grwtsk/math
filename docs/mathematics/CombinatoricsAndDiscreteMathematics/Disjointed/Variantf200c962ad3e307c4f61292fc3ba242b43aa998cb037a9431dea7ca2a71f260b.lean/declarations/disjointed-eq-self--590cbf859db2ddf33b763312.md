# disjointed_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aed8cf5f-ca99-9a7d-fb49-8f0b4ed9349f",
  "kind": "lemma",
  "lexical_name": "disjointed_eq_self",
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
  "slug": "disjointed-eq-self--590cbf859db2ddf33b763312",
  "source": {
    "blob": "70041177151e71083bc9fd97214104f523b60724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:590cbf859db2ddf33b763312a5f271807eda817a4b3b4aaec03a6ea3f14f3b69",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aed8cf5f-ca99-9a7d-fb49-8f0b4ed9349f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjointed_eq_self {f : ι → α} {i : ι} (hf : ∀ j < i, Disjoint (f j) (f i)) :
    disjointed f i = f i := by
  rw [disjointed_apply, sdiff_eq_left, disjoint_iff, sup_inf_distrib_left,
    sup_congr rfl <| fun j hj ↦ disjoint_iff.mp <| (hf _ (mem_Iio.mp hj)).symm]
  exact sup_bot _

/- NB: The original statement for `ι = ℕ` was a `def` and worked for `p : α → Sort*`. I couldn't
prove the `Sort*` version for general `ι`, but all instances of `disjointedRec` in the library are
for Prop anyway. -/
/--
An induction principle for `disjointed`. To prove something about `disjointed f i`, it's
enough to prove it for `f i` and being able to extend through diffs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variantf200c962ad3e307c4f61292fc3ba242b43aa998cb037a9431dea7ca2a71f260b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70041177151e71083bc9fd97214104f523b60724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
