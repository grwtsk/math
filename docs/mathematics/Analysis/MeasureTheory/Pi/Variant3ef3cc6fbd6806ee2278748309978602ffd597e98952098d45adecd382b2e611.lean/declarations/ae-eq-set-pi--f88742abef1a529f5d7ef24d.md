# ae_eq_set_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1caa0ca-d6ee-cec3-c68a-81970f64c231",
  "kind": "theorem",
  "lexical_name": "ae_eq_set_pi",
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
  "slug": "ae-eq-set-pi--f88742abef1a529f5d7ef24d",
  "source": {
    "blob": "162b60fdc26deae210eb860d0eae58f1a6e4e9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 399,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f88742abef1a529f5d7ef24de2134dbec520f5e549d55899eea31f7bfbcd3f07",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1caa0ca-d6ee-cec3-c68a-81970f64c231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_set_pi {I : Set ι} {s t : ∀ i, Set (α i)} (h : ∀ i ∈ I, s i =ᵐ[μ i] t i) :
    Set.pi I s =ᵐ[Measure.pi μ] Set.pi I t :=
  (ae_le_set_pi fun i hi => (h i hi).le).antisymm (ae_le_set_pi fun i hi => (h i hi).symm.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162b60fdc26deae210eb860d0eae58f1a6e4e9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
