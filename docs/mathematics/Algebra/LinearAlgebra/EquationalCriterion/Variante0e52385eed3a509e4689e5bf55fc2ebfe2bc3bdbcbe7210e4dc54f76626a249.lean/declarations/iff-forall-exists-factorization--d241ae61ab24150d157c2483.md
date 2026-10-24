# iff_forall_exists_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63495890-8da7-98d8-90e5-41453a8822d7",
  "kind": "theorem",
  "lexical_name": "iff_forall_exists_factorization",
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
  "slug": "iff-forall-exists-factorization--d241ae61ab24150d157c2483",
  "source": {
    "blob": "743e9721468e82eda444d1533a52c5f486305d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d241ae61ab24150d157c24836d2cee5b752f7c14f8ade9271a2ecae994eb7264",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63495890-8da7-98d8-90e5-41453a8822d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_forall_exists_factorization : Flat R M ↔
    ∀ {l : ℕ} {f : Fin l →₀ R} {x : (Fin l →₀ R) →ₗ[R] M}, x f = 0 →
      ∃ (k : ℕ) (a : (Fin l →₀ R) →ₗ[R] (Fin k →₀ R)) (y : (Fin k →₀ R) →ₗ[R] M),
        x = y ∘ₗ a ∧ a f = 0 := (tfae_equational_criterion R M).out 1 5

/-- **Equational criterion for flatness**, backward direction, alternate form.

Let $M$ be a module over a commutative ring $R$. Suppose that for all finite free modules $R^l$,
all $f \in R^l$, and all linear maps $x \colon R^l \to M$ such that $x(f) = 0$, there
exist a finite free module $R^k$ and linear maps $a \colon R^l \to R^k$ and
$y \colon R^k \to M$ such that $x = y \circ a$ and $a(f) = 0$. Then $M$ is flat. -/
@[stacks 058D "(2) → (1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743e9721468e82eda444d1533a52c5f486305d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
