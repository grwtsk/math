# Pattern.Model.split_char_eq_split_beq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa004280-bcd4-43a1-8e61-a0884772fcd9",
  "kind": "theorem",
  "lexical_name": "Pattern.Model.split_char_eq_split_beq",
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
  "slug": "pattern-model-split-char-eq-split-beq--0bcd760c800f1f46f78022cb",
  "source": {
    "blob": "b390d083d71a56e1a38f9650e457164690b83e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bcd760c800f1f46f78022cb948d6102d371f806aa4474b6e578bdad557b8782",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa004280-bcd4-43a1-8e61-a0884772fcd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pattern.Model.split_char_eq_split_beq {c : Char} {s : Slice}
    (f curr : s.Pos) (hle : f ≤ curr) :
    Model.split c f curr hle = Model.split (· == c) f curr hle := by
  fun_induction Model.split c f curr hle with
  | case1 fr h => simp
  | case2 fr curr hle h pos h₁ h₂ ih =>
    conv => rhs; rw [Model.split]
    simp only [h, ↓reduceDIte]
    split <;> simp_all [matchAt?_eq_matchAt?_beq]
  | case3 fr curr hle h pos ih =>
    conv => rhs; rw [Model.split]
    simp only [h, ↓reduceDIte]
    split <;> simp_all [matchAt?_eq_matchAt?_beq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b390d083d71a56e1a38f9650e457164690b83e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
