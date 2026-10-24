# homotopyGroupOfUniqueMulEquivFundamentalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:863ceef9725e1d33a9f660390f18b88ca9ed8d029f78b68b9837be7c6c6fc786",
  "kind": "def",
  "lexical_name": "homotopyGroupOfUniqueMulEquivFundamentalGroup",
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
  "slug": "homotopygroupofuniquemulequivfundamentalgroup--008bbd4538b4572fffe6ebb4",
  "source": {
    "blob": "c8e10a052b13cd9076637537a1c01aedae2a2cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 623,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:008bbd4538b4572fffe6ebb446b7834e7b29e286828f64c9d4e3fe5b2835147e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:863ceef9725e1d33a9f660390f18b88ca9ed8d029f78b68b9837be7c6c6fc786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopyGroupOfUniqueMulEquivFundamentalGroup (N) [Unique N] :
    HomotopyGroup N X x ≃* FundamentalGroup X x where
  toEquiv := homotopyGroupEquivFundamentalGroupOfUnique N
  map_mul' a b := Quotient.inductionOn₂ a b fun p q => by
    simp only [HomotopyGroup.mul_spec (i := default)]
    apply Quotient.sound
    simp [genLoopEquivOfUnique_transAt]

/-- The first homotopy group at `x` is isomorphic to the fundamental group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8e10a052b13cd9076637537a1c01aedae2a2cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
