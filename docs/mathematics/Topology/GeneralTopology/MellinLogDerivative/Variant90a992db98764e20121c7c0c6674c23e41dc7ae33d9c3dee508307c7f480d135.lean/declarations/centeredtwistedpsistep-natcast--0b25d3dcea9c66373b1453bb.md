# centeredTwistedPsiStep_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcb9053185d432e482efc98896c8f338e267345f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed739ee3-b0b7-54e1-64e6-af99f2e4fa5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86fd0932-684c-9079-302d-7b37d8458542",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiStep_natCast",
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
  "slug": "centeredtwistedpsistep-natcast--0b25d3dcea9c66373b1453bb",
  "source": {
    "blob": "fcb9053185d432e482efc98896c8f338e267345f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b25d3dcea9c66373b1453bb3103a4e2fa22a5b04c8d52a430eaa044e6cc71d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86fd0932-684c-9079-302d-7b37d8458542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiStep_natCast
    {q : ℕ} (χ : DirichletCharacter ℂ q) (x : ℕ) :
    centeredTwistedPsiStep χ x = centeredTwistedPsi χ x := by
  by_cases hx : x = 0
  · simp [hx, centeredTwistedPsiStep, centeredTwistedPsi]
  · have hx1 : (1 : ℝ) ≤ (x : ℝ) := by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hx)
    simp [centeredTwistedPsiStep, centeredTwistedPsi, hx1]

/-- The literal centered Mellin candidate.  Convergence and holomorphy are
properties, not part of this definition. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcb9053185d432e482efc98896c8f338e267345f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
