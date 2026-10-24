# inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:504f16895145acd03db3232cc2756a7bc88056e32eb858eef58a8ac0d531dea9",
  "kind": "def",
  "lexical_name": "inl",
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
  "slug": "inl--adabcce7be8bf4709ce29721",
  "source": {
    "blob": "bebe0d12635fbac2ced4c41711cf983542a3b780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adabcce7be8bf4709ce29721368e2a369891066deb24f541200e4d51889359c7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:504f16895145acd03db3232cc2756a7bc88056e32eb858eef58a8ac0d531dea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inl [DecidablePred fun x : G₀ ↦ x = 0] : G₀ →*₀ WithZero (G₀ˣ × H₀ˣ) :=
  (WithZero.map' (.inl _ _)).comp
    (.ofClass WithZero.withZeroUnitsEquiv.symm)

/-- Given groups with zero `G₀`, `H₀`, the natural inclusion ordered homomorphism from
`H₀` to `WithZero (G₀ˣ × H₀ˣ)`, which is the group with zero that can be identified
as their product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ProdHom/Variantf2f45bcc1938b5e170e36e6216970ce22679029c283a464ac8f59cba7991fca1.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bebe0d12635fbac2ced4c41711cf983542a3b780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
