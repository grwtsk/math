# regularizedZeta_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "850ea260fef4099d6dcf145b8d40f40088d18075",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5084db37-7737-8743-ef69-aa6bdbcc5c71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3ef8d30-98e8-6533-3ea4-cd4fcc110ac0",
  "kind": "theorem",
  "lexical_name": "regularizedZeta_eq",
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
  "slug": "regularizedzeta-eq--f4df4c12b61ee198e6de6211",
  "source": {
    "blob": "850ea260fef4099d6dcf145b8d40f40088d18075",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 145,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4df4c12b61ee198e6de6211b5ad705a17a5a21548777bcf4a000dcf590ced91",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ef8d30-98e8-6533-3ea4-cd4fcc110ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularizedZeta_eq {z : ℂ} (hz0 : z ≠ 0) (hz1 : z ≠ 1) :
    regularizedZeta z = z * (z - 1) * riemannZeta z := by
  rw [riemannZeta_def_of_ne_zero hz0, completedRiemannZeta_eq]
  unfold regularizedZeta
  have h1 : 1 - z ≠ 0 := sub_ne_zero.mpr hz1.symm
  field_simp [hz0, h1]
  ring

/-- The completed expression removes the pole without assuming the desired eta identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant523a001679e295f44997698b1b72431ef3238d387b04464c6e78040d225bc00f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ea260fef4099d6dcf145b8d40f40088d18075` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
