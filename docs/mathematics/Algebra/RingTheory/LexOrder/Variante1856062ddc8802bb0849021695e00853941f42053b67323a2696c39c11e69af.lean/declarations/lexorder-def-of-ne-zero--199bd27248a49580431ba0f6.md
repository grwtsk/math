# lexOrder_def_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56634e81-1b64-c283-3b83-9753ad4c860e",
  "kind": "theorem",
  "lexical_name": "lexOrder_def_of_ne_zero",
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
  "slug": "lexorder-def-of-ne-zero--199bd27248a49580431ba0f6",
  "source": {
    "blob": "596e2c44b9e3aa8d5477f9cc5c048af97ada8da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199bd27248a49580431ba0f622c087b13f62a872ab29ef66c4b98aa4d6ef0f2f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56634e81-1b64-c283-3b83-9753ad4c860e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lexOrder_def_of_ne_zero {φ : MvPowerSeries σ R} (hφ : φ ≠ 0) :
    ∃ (ne : Set.Nonempty (toLex '' φ.support)),
      lexOrder φ = WithTop.some ((@wellFounded_lt (Lex (σ →₀ ℕ))
        (instLTLex) (Lex.wellFoundedLT)).min (toLex '' φ.support) ne) := by
  suffices ne : Set.Nonempty (toLex '' φ.support) by
    use ne
    unfold lexOrder
    simp only [dif_neg hφ]
  simp only [Set.image_nonempty, Function.support_nonempty_iff, ne_eq, hφ, not_false_eq_true]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596e2c44b9e3aa8d5477f9cc5c048af97ada8da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
