# evenOddRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f885ddc23b49da6c5ae0aa436a0d8d3887ac8eb060dd6242570e9985a76862cc",
  "kind": "def",
  "lexical_name": "evenOddRec",
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
  "slug": "evenoddrec--ae88e472fc3831cc18ec35dd",
  "source": {
    "blob": "679a7ff57f0977d3409ed6c8a6507cbe5822373d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 18,
    "path": "GRWTSK/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae88e472fc3831cc18ec35dda8af4b7dc78fd65fbec90f7ed1d6fb6fcf46cab3",
  "verification": {
    "reference": "docs/verification/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f885ddc23b49da6c5ae0aa436a0d8d3887ac8eb060dd6242570e9985a76862cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evenOddRec {P : ℕ → Sort*} (h0 : P 0) (h_even : ∀ n, P n → P (2 * n))
    (h_odd : ∀ n, P n → P (2 * n + 1)) (n : ℕ) : P n :=
  binaryRec h0 (fun
    | false, i, hi => (h_even i hi : P (2 * i))
    | true, i, hi => (h_odd i hi : P (2 * i + 1))) n

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EvenOddRec/Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679a7ff57f0977d3409ed6c8a6507cbe5822373d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
