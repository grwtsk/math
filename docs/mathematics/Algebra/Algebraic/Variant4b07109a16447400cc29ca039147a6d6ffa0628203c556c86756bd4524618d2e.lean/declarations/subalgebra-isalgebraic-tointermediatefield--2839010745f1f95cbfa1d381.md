# Subalgebra.IsAlgebraic.toIntermediateField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdbcfbbd7c559f5ca457b6c278cb82ae0518e9db6bf2e83955672fae5e7fee55",
  "kind": "def",
  "lexical_name": "Subalgebra.IsAlgebraic.toIntermediateField",
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
  "slug": "subalgebra-isalgebraic-tointermediatefield--2839010745f1f95cbfa1d381",
  "source": {
    "blob": "1f2214a63233c85dda2b88c433b57d2144723504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2839010745f1f95cbfa1d381bac8f69ac72d9388a68adf735be82260ef5bc066",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdbcfbbd7c559f5ca457b6c278cb82ae0518e9db6bf2e83955672fae5e7fee55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subalgebra.IsAlgebraic.toIntermediateField {S : Subalgebra K L} (hS : S.IsAlgebraic) :
    IntermediateField K L where
  toSubalgebra := S
  inv_mem' x hx := Algebra.adjoin_le_iff.mpr
    (Set.singleton_subset_iff.mpr hx) (hS x hx).isIntegral.inv_mem_adjoin

/-- Turn an algebraic subalgebra into an intermediate field, `Algebra.IsAlgebraic` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraic/Variant4b07109a16447400cc29ca039147a6d6ffa0628203c556c86756bd4524618d2e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f2214a63233c85dda2b88c433b57d2144723504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
