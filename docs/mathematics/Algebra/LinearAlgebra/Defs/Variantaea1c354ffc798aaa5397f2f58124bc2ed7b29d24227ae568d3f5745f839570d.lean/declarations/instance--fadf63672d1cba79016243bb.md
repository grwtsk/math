# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:054184b15718d9225340d6cd292d48b490e6dfadbc960856a9cb2d3d60b39cb4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fadf63672d1cba79016243bb",
  "source": {
    "blob": "5f68ae60b4f22094ae57c9e4ef28be13925e8ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 755,
    "line": 751,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fadf63672d1cba79016243bb22e276a5ab688051f8f5390e4426af5c7f342d4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:054184b15718d9225340d6cd292d48b490e6dfadbc960856a9cb2d3d60b39cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [SMulCommClass S T M₂] : SMulCommClass S T (M →ₛₗ[σ₁₂] M₂) :=
  ⟨fun _ _ _ ↦ ext fun _ ↦ smul_comm _ _ _⟩

-- example application of this instance: if S -> T -> R are homomorphisms of commutative rings and
-- M and M₂ are R-modules then the S-module and T-module structures on Hom_R(M,M₂) are compatible.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantaea1c354ffc798aaa5397f2f58124bc2ed7b29d24227ae568d3f5745f839570d.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f68ae60b4f22094ae57c9e4ef28be13925e8ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
