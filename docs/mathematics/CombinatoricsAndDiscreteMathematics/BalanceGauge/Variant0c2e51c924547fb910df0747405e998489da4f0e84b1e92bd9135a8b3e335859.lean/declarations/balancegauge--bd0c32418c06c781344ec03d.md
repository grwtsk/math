# BalanceGauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48136f64853ff2b40e8e63339ac38d819b76da24271c4a9ac0726501d5e59298",
  "kind": "structure",
  "lexical_name": "BalanceGauge",
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
  "slug": "balancegauge--bd0c32418c06c781344ec03d",
  "source": {
    "blob": "9677bb9180c3b140713eaf6c0f6c2c46e06bcac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd0c32418c06c781344ec03d1accfaf00c60b68dc9ad67c8450ca947229b9a82",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48136f64853ff2b40e8e63339ac38d819b76da24271c4a9ac0726501d5e59298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BalanceGauge
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (cut : Finset Prime) where
  factor : Prime → Symbol
  product_one :
    ∏ prime ∈ cut, factor prime = 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant0c2e51c924547fb910df0747405e998489da4f0e84b1e92bd9135a8b3e335859.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9677bb9180c3b140713eaf6c0f6c2c46e06bcac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
