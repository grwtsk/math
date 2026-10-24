# eventSigmaEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c7a85a926033d3bf407dae9c91311b9c75ccb5eb35db5695d38b50e5cf23a5a",
  "kind": "def",
  "lexical_name": "eventSigmaEquiv",
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
  "slug": "eventsigmaequiv--2d6707ce00c2582b79b6a854",
  "source": {
    "blob": "eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 240,
    "path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d6707ce00c2582b79b6a854ffb0cea74fe5df133d93554adc3f4a1c77dba169",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c7a85a926033d3bf407dae9c91311b9c75ccb5eb35db5695d38b50e5cf23a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eventSigmaEquiv (sizes : Fin m → ℕ) (E : Sample (A := A) sizes → Prop) :
    {s // E s} ≃ Σ P : Partition (A := A) sizes,
      {g : Selection P // E ((sampleSigmaEquiv sizes).symm ⟨P,g⟩)} where
  toFun s := let t := sampleSigmaEquiv sizes s.val
    ⟨t.1, ⟨t.2, by dsimp [t]; simpa using s.property⟩⟩
  invFun t := ⟨(sampleSigmaEquiv sizes).symm ⟨t.1,t.2.val⟩, t.2.property⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Exact mixture formula: uniform partition, followed by the uniform product
of independent part choices. No probability-law hypothesis is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
