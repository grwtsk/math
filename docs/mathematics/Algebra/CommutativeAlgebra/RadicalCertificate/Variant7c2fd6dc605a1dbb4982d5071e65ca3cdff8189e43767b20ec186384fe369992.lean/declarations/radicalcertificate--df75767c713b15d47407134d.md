# RadicalCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b712bedea9e754a9d4efdadf3271fb6e8965c7bb14b36fe2be381c183d97442a",
  "kind": "structure",
  "lexical_name": "RadicalCertificate",
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
  "slug": "radicalcertificate--df75767c713b15d47407134d",
  "source": {
    "blob": "2a9b7a024fc59f89d7b6a7ce8d315b9ec5a55c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RadicalCertificate/Variant7c2fd6dc605a1dbb4982d5071e65ca3cdff8189e43767b20ec186384fe369992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df75767c713b15d47407134dd7d112351c3bfcb47c3e729df52c1b8e475f006e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RadicalCertificate/Variant7c2fd6dc605a1dbb4982d5071e65ca3cdff8189e43767b20ec186384fe369992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b712bedea9e754a9d4efdadf3271fb6e8965c7bb14b36fe2be381c183d97442a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RadicalCertificate
    {Variable : Type u} {K : Type v} [CommSemiring K]
    (system : EquationSystem Variable K)
    (claim : MvPolynomial Variable K) where
  exponent : Nat
  exponent_pos : 0 < exponent
  coefficient :
    Fin system.generators.length → MvPolynomial Variable K
  identity :
    claim ^ exponent = system.idealCombination coefficient

/-- Every generated polynomial combination vanishes at a certified solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RadicalCertificate/Variant7c2fd6dc605a1dbb4982d5071e65ca3cdff8189e43767b20ec186384fe369992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RadicalCertificate/Variant7c2fd6dc605a1dbb4982d5071e65ca3cdff8189e43767b20ec186384fe369992.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9b7a024fc59f89d7b6a7ce8d315b9ec5a55c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
