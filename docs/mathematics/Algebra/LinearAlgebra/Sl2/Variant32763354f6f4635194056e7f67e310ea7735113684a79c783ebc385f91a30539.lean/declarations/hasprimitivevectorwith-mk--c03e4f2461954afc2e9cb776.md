# HasPrimitiveVectorWith.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2140e97-70b9-a02e-4625-ab48bc6287cb",
  "kind": "lemma",
  "lexical_name": "HasPrimitiveVectorWith.mk'",
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
  "slug": "hasprimitivevectorwith-mk--c03e4f2461954afc2e9cb776",
  "source": {
    "blob": "91fdb6337421f987f0b99d176252bdb8ef672e80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c03e4f2461954afc2e9cb77684c0ca13a9961bb70c929ac1ff97a69836e8a18f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2140e97-70b9-a02e-4625-ab48bc6287cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasPrimitiveVectorWith.mk' [NoZeroSMulDivisors ℤ M] (t : IsSl2Triple h e f) (m : M) (μ ρ : R)
    (hm : m ≠ 0) (hm' : ⁅h, m⁆ = μ • m) (he : ⁅e, m⁆ = ρ • m) :
    HasPrimitiveVectorWith t m μ  where
  ne_zero := hm
  lie_h := hm'
  lie_e := by
    suffices 2 • ⁅e, m⁆ = 0 by simpa using this
    rw [← nsmul_lie, ← t.lie_h_e_nsmul, lie_lie, hm', lie_smul, he, lie_smul, hm',
      smul_smul, smul_smul, mul_comm ρ μ, sub_self]

variable (R) in
open Submodule in
/-- The subalgebra associated to an `sl₂` triple. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91fdb6337421f987f0b99d176252bdb8ef672e80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
