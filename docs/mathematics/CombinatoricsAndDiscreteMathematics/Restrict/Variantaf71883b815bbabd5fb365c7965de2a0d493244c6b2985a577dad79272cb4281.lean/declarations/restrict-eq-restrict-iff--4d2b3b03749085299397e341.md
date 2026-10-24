# restrict_eq_restrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71ddf9ca-98e5-7895-c2fe-257a78461801",
  "kind": "theorem",
  "lexical_name": "restrict_eq_restrict_iff",
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
  "slug": "restrict-eq-restrict-iff--4d2b3b03749085299397e341",
  "source": {
    "blob": "4a8f98cbe1ac4fcd4df398c0c8aeb698394ec21b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d2b3b03749085299397e3411c01b094d1fa688037090b93aa2457463fa2917a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ddf9ca-98e5-7895-c2fe-257a78461801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_eq_restrict_iff (M M' : Matroid α) (X : Set α) :
    M ↾ X = M' ↾ X ↔ ∀ I, I ⊆ X → (M.Indep I ↔ M'.Indep I) := by
  refine ⟨fun h I hIX ↦ ?_, fun h ↦ ext_indep rfl fun I (hI : I ⊆ X) ↦ ?_⟩
  · rw [← and_iff_left (a := (M.Indep I)) hIX, ← and_iff_left (a := (M'.Indep I)) hIX,
      ← restrict_indep_iff, h, restrict_indep_iff]
  rw [restrict_indep_iff, and_iff_left hI, restrict_indep_iff, and_iff_left hI, h _ hI]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variantaf71883b815bbabd5fb365c7965de2a0d493244c6b2985a577dad79272cb4281.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f98cbe1ac4fcd4df398c0c8aeb698394ec21b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
