# succNthVal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8edfe8901b8784691047d05a20f9bba1286a0b354d235d3a36dedd5bd2acc41e",
  "kind": "def",
  "lexical_name": "succNthVal",
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
  "slug": "succnthval--5d32903359c7acda0fd371f4",
  "source": {
    "blob": "0bc249cbfa9b4cd4294fe850c8e79b1c4f69e50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d32903359c7acda0fd371f43c033817d707ec5380f4d66be208b1267b542d82",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8edfe8901b8784691047d05a20f9bba1286a0b354d235d3a36dedd5bd2acc41e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def succNthVal (n : ℕ) (a₁ a₂ : 𝕎 k) (bs : Fin (n + 1) → k) (ha₁ : a₁.coeff 0 ≠ 0)
    (ha₂ : a₂.coeff 0 ≠ 0) : k :=
  Classical.choose (root_exists p n a₁ a₂ bs ha₁ ha₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc249cbfa9b4cd4294fe850c8e79b1c4f69e50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
