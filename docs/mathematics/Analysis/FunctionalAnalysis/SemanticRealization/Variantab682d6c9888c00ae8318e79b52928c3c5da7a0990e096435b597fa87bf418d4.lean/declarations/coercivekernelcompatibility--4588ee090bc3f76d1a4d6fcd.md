# CoerciveKernelCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:037e1297b1caaea01afbf48e6563b5cd9fcf91ed588e6ceadaf9272097093b69",
  "kind": "structure",
  "lexical_name": "CoerciveKernelCompatibility",
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
  "slug": "coercivekernelcompatibility--4588ee090bc3f76d1a4d6fcd",
  "source": {
    "blob": "4384d3cd3a595c59c5f987a8b24fc22559a4f69f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 171,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4588ee090bc3f76d1a4d6fcd8b0c1cab176b4c006fa2ae56f9c33613cdbb7b41",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:037e1297b1caaea01afbf48e6563b5cd9fcf91ed588e6ceadaf9272097093b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoerciveKernelCompatibility
    {Atom : Type u}
    (data : Concept.QuotientNormData Atom)
    (kernel : Kernel.PositiveKernel Atom)
    extends KernelCompatibility data kernel where
  lowerConstant : ℝ
  lowerConstant_positive : 0 < lowerConstant
  lower_bound_on_raw :
    ∀ combination : Concept.SemanticCombination Atom,
      lowerConstant * data.semanticSeminorm combination ≤
        ‖rawToKernelSpace kernel combination‖

/-- Coercivity on the dense raw carrier extends to the Banach completion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4384d3cd3a595c59c5f987a8b24fc22559a4f69f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
