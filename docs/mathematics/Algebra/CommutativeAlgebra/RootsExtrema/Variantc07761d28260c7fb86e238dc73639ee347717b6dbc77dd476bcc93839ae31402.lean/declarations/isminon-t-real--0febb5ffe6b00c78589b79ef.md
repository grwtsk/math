# isMinOn_T_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07bd8276-92fa-4416-3dc1-8247836f258a",
  "kind": "theorem",
  "lexical_name": "isMinOn_T_real",
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
  "slug": "isminon-t-real--0febb5ffe6b00c78589b79ef",
  "source": {
    "blob": "43664163643071b24f6d0306d899056246a5b894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 292,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0febb5ffe6b00c78589b79ef2d56afcec335a41f7d8b478a7c578d0c776235b2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07bd8276-92fa-4416-3dc1-8247836f258a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMinOn_T_real {n k : ℕ} (hn : n ≠ 0) (hk₁ : k ≤ n) (hk₂ : Odd k) :
    IsMinOn (T ℝ n).eval (Set.Icc (-1) 1) (cos (k * π / n)) :=
  isMinOn_iff.mpr (fun x hx => le_of_eq_of_le
    ((eval_T_real_eq_neg_one_iff hn _).mpr ⟨k, hk₁, hk₂, rfl⟩)
    (abs_le.mp (abs_eval_T_real_le_one n (by grind))).1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43664163643071b24f6d0306d899056246a5b894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
