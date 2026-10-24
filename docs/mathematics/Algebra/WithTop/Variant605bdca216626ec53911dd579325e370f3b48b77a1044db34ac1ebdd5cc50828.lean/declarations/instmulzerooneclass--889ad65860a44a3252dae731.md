# instMulZeroOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60f6a33538cab0f24a901b35f597282a7e6f87b87f80e2712f99a4e2bb7b900d",
  "kind": "instance",
  "lexical_name": "instMulZeroOneClass",
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
  "slug": "instmulzerooneclass--889ad65860a44a3252dae731",
  "source": {
    "blob": "a67455f71d2ee0a8bdec7bec99f18568946f3b7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/Algebra/WithTop/Variant605bdca216626ec53911dd579325e370f3b48b77a1044db34ac1ebdd5cc50828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:889ad65860a44a3252dae731778e447f6e45cfe9a3290757c9289ad234a97475",
  "verification": {
    "reference": "docs/verification/Algebra/WithTop/Variant605bdca216626ec53911dd579325e370f3b48b77a1044db34ac1ebdd5cc50828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60f6a33538cab0f24a901b35f597282a7e6f87b87f80e2712f99a4e2bb7b900d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMulZeroOneClass [MulZeroOneClass α] [Nontrivial α] : MulZeroOneClass (WithTop α) where
  one_mul
    | ⊤ => mul_top (mt coe_eq_coe.1 one_ne_zero)
    | (a : α) => by rw [← coe_one, ← coe_mul, one_mul]
  mul_one
    | ⊤ => top_mul (mt coe_eq_coe.1 one_ne_zero)
    | (a : α) => by rw [← coe_one, ← coe_mul, mul_one]

/-- A version of `WithTop.map` for `MonoidWithZeroHom`s. -/
@[to_dual (attr := simps -fullyApplied)
/-- A version of `WithBot.map` for `MonoidWithZeroHom`s. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WithTop/Variant605bdca216626ec53911dd579325e370f3b48b77a1044db34ac1ebdd5cc50828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WithTop/Variant605bdca216626ec53911dd579325e370f3b48b77a1044db34ac1ebdd5cc50828.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a67455f71d2ee0a8bdec7bec99f18568946f3b7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
