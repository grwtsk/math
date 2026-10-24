# isNat_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3b1f526-83df-66bb-02c1-c83c8eebd9a0",
  "kind": "theorem",
  "lexical_name": "isNat_one",
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
  "slug": "isnat-one--a6f4b67c7ec4520274d0d4f0",
  "source": {
    "blob": "b9d5c56e2a49e66ac169d3272194f373b9d0048a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 46,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6f4b67c7ec4520274d0d4f071b5efe2fb15181e3d96ff5b2ec97d6c91bc8e9a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b1f526-83df-66bb-02c1-c83c8eebd9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNat_one (α) [AddMonoidWithOne α] : IsNat (One.one : α) (nat_lit 1) := ⟨Nat.cast_one.symm⟩

/-- The `norm_num` extension which identifies the expression `One.one`, returning `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantfdba1719fbffa4990fc0493b003fef5caf898e2864f15ac145cd37935cedd25c.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9d5c56e2a49e66ac169d3272194f373b9d0048a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
