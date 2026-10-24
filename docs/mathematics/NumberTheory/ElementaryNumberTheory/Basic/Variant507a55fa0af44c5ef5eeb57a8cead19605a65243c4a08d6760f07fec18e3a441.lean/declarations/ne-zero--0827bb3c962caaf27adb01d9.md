# ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50adf264-a87e-aa08-0539-f28ea65ebf4f",
  "kind": "theorem",
  "lexical_name": "ne_zero",
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
  "slug": "ne-zero--0827bb3c962caaf27adb01d9",
  "source": {
    "blob": "16f0e4840a5bd997c0264c5ad2940ff923ee6a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 552,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0827bb3c962caaf27adb01d978d94a89281b9f0e50a36bf715f7663d9395267a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50adf264-a87e-aa08-0539-f28ea65ebf4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ne_zero [Nontrivial M₀] {ζ : M₀} (h : IsPrimitiveRoot ζ k) : k ≠ 0 → ζ ≠ 0 :=
  mt fun hn => h.unique (hn.symm ▸ IsPrimitiveRoot.zero)
#align is_primitive_root.ne_zero IsPrimitiveRoot.ne_zero

end CommMonoidWithZero

section DivisionCommMonoid

variable {ζ : G}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f0e4840a5bd997c0264c5ad2940ff923ee6a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
