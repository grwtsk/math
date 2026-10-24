# seq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e662eea-236e-1ad2-8aba-6c93f49a3f30",
  "kind": "theorem",
  "lexical_name": "seq",
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
  "slug": "seq--5de6fc293a432ad9ced712eb",
  "source": {
    "blob": "da0dbfca8602da47c77989c1d73b8dd2147e50b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de6fc293a432ad9ced712ebbf122d23628ab46c3f7c8ee895af32b92a96e911",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e662eea-236e-1ad2-8aba-6c93f49a3f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem seq [Applicative m] [LawfulApplicative m] {x : m α}
    (hf : SatisfiesM p₁ f) (hx : SatisfiesM p₂ x)
    (H : ∀ {f a}, p₁ f → p₂ a → q (f a)) : SatisfiesM q (f <*> x) := by
  match f, x, hf, hx with | _, _, ⟨f, rfl⟩, ⟨x, rfl⟩ => ?_
  refine ⟨(fun ⟨a, h₁⟩ ⟨b, h₂⟩ => ⟨a b, H h₁ h₂⟩) <$> f <*> x, ?_⟩
  simp only [← pure_seq]; simp [SatisfiesM, seq_assoc]
  simp only [← pure_seq]; simp [seq_assoc, Function.comp_def]

/-- `SatisfiesM` distributes over `<*>`, strongest postcondition version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0dbfca8602da47c77989c1d73b8dd2147e50b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
