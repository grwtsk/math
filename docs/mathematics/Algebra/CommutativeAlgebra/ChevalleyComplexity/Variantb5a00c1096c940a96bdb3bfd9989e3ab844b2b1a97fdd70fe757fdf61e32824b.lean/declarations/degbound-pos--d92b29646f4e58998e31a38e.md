# degBound_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7730027a-242a-69fd-711e-2a75658f7352",
  "kind": "lemma",
  "lexical_name": "degBound_pos",
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
  "slug": "degbound-pos--d92b29646f4e58998e31a38e",
  "source": {
    "blob": "7201a976ef3fafeb2a26776aa5bdd22d7d398675",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 662,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92b29646f4e58998e31a38e50fefab35187ec10034de87a7439032a4f78bd1d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7730027a-242a-69fd-711e-2a75658f7352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degBound_pos (k : ℕ) (D : ℕ → ℕ) : ∀ n, 0 < degBound k D n
  | 0 => by simp
  | n + 1 => by simp [degBound_succ, Nat.pow_self_pos, degBound_pos]

end MvPolynomialC

open MvPolynomialC in
/-- The `C : R → R[X₁, ..., Xₘ]` case of **Chevalley's theorem** with complexity bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variantb5a00c1096c940a96bdb3bfd9989e3ab844b2b1a97fdd70fe757fdf61e32824b.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7201a976ef3fafeb2a26776aa5bdd22d7d398675` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
