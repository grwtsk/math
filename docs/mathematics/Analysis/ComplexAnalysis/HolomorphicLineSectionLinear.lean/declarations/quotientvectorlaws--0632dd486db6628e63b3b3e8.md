# QuotientVectorLaws

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:878d3677175ab42448d578f9201049d2c8cd87b7edcb515c3a7b817504f41a6c",
  "kind": "structure",
  "lexical_name": "QuotientVectorLaws",
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
  "slug": "quotientvectorlaws--0632dd486db6628e63b3b3e8",
  "source": {
    "blob": "660cf0f255a0a8cfa78115820358a0d5650c2107",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 309,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionLinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0632dd486db6628e63b3b3e86efe4ad748f8aa70e88200ac21c6d74176810ab7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:878d3677175ab42448d578f9201049d2c8cd87b7edcb515c3a7b817504f41a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuotientVectorLaws : Prop where
  add_assoc : ∀ q r v : SectionQuotient M μ hOpen,
    quotientAdd M μ hOpen (quotientAdd M μ hOpen q r) v =
      quotientAdd M μ hOpen q (quotientAdd M μ hOpen r v)
  add_comm : ∀ q r : SectionQuotient M μ hOpen,
    quotientAdd M μ hOpen q r = quotientAdd M μ hOpen r q
  zero_add : ∀ q : SectionQuotient M μ hOpen, quotientAdd M μ hOpen (quotientZero M μ hOpen) q = q
  add_zero : ∀ q : SectionQuotient M μ hOpen, quotientAdd M μ hOpen q (quotientZero M μ hOpen) = q
  neg_add : ∀ q : SectionQuotient M μ hOpen,
    quotientAdd M μ hOpen (quotientSMul M μ hOpen (-1) q) q = quotientZero M μ hOpen
  one_smul : ∀ q : SectionQuotient M μ hOpen, quotientSMul M μ hOpen 1 q = q
  mul_smul : ∀ (a b : ℂ) (q : SectionQuotient M μ hOpen),
    quotientSMul M μ hOpen (a * b) q = quotientSMul M μ hOpen a (quotientSMul M μ hOpen b q)
  smul_add : ∀ (a : ℂ) (q r : SectionQuotient M μ hOpen),
    quotientSMul M μ hOpen a (quotientAdd M μ hOpen q r) =
      quotientAdd M μ hOpen (quotientSMul M μ hOpen a q) (quotientSMul M μ hOpen a r)
  add_smul : ∀ (a b : ℂ) (q : SectionQuotient M μ hOpen),
    quotientSMul M μ hOpen (a + b) q =
      quotientAdd M μ hOpen (quotientSMul M μ hOpen a q) (quotientSMul M μ hOpen b q)
  smul_zero : ∀ a : ℂ,
    quotientSMul M μ hOpen a (quotientZero M μ hOpen) = quotientZero M μ hOpen
  zero_smul : ∀ q : SectionQuotient M μ hOpen,
    quotientSMul M μ hOpen 0 q = quotientZero M μ hOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineSectionLinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineSectionLinear.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `660cf0f255a0a8cfa78115820358a0d5650c2107` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
