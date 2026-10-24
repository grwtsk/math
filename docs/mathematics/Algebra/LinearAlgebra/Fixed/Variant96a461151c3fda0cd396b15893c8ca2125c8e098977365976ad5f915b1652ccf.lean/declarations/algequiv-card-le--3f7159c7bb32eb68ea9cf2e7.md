# AlgEquiv.card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:814e8790-2580-b571-4fa3-537d7180bf99",
  "kind": "theorem",
  "lexical_name": "AlgEquiv.card_le",
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
  "slug": "algequiv-card-le--3f7159c7bb32eb68ea9cf2e7",
  "source": {
    "blob": "c9f644c80bb1e8de365d21dcfd28821d6bef15be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 323,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f7159c7bb32eb68ea9cf2e7fe650155ea42f9c194d471c199746363ca8cfecc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:814e8790-2580-b571-4fa3-537d7180bf99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgEquiv.card_le {F K : Type*} [Field F] [Field K] [Algebra F K] [FiniteDimensional F K] :
    Fintype.card (K ≃ₐ[F] K) ≤ Module.finrank F K :=
  Fintype.ofEquiv_card (algEquivEquivAlgHom F K).toEquiv.symm ▸ AlgHom.card_le

namespace FixedPoints

variable (G F : Type*) [Group G] [Field F] [MulSemiringAction G F]

/-- Let $F$ be a field. Let $G$ be a finite group acting faithfully on $F$.
Then $[F : F^G] = |G|$. -/
@[stacks 09I3 "second part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant96a461151c3fda0cd396b15893c8ca2125c8e098977365976ad5f915b1652ccf.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f644c80bb1e8de365d21dcfd28821d6bef15be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
