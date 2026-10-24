# coe_bit1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eff7441-8e92-bfdd-95f2-5a72942c6d22",
  "kind": "theorem",
  "lexical_name": "coe_bit1",
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
  "slug": "coe-bit1--8650bbb3c1fda9adbfc483d8",
  "source": {
    "blob": "8d6f1189ae7ed2ec1ee196becf46c7f8b7d6c6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8650bbb3c1fda9adbfc483d81a5c35c51f175bfac9a5e8fbf39f1ccf87b6bc11",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eff7441-8e92-bfdd-95f2-5a72942c6d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_bit1 [One α] {a : α} : ((bit1 a : α) : WithTop α) = (bit1 a : WithTop α) :=
  rfl
#align with_top.coe_bit1 WithTop.coe_bit1

end deprecated

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantf2497e0b4a58f324089ff63c175856020f7a5140cfe4fd4db8294a9d6c6d0125.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6f1189ae7ed2ec1ee196becf46c7f8b7d6c6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
