# casesOn₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b1b246d245cd090abc01b2dbec32df47e936287675395fa1b5f76a0c63be7c9",
  "kind": "def",
  "lexical_name": "casesOn₃",
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
  "slug": "caseson--c287d2d5934f63dded3ae46c",
  "source": {
    "blob": "e8b87ce21528040692f32c678c92162795ae9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 512,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c287d2d5934f63dded3ae46c6743f4e46a372318225ca6fecddb0e3af69c2139",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b1b246d245cd090abc01b2dbec32df47e936287675395fa1b5f76a0c63be7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def casesOn₃ {motive : ∀ {n}, Vector α n → Vector β n → Vector γ n → Sort*} (v₁ : Vector α m)
    (v₂ : Vector β m) (v₃ : Vector γ m) (nil : motive nil nil nil)
    (cons : ∀ {n}, (x : α) → (y : β) → (z : γ) → (xs : Vector α n) → (ys : Vector β n)
      → (zs : Vector γ n) → motive (x ::ᵥ xs) (y ::ᵥ ys) (z ::ᵥ zs)) :
    motive v₁ v₂ v₃ :=
  inductionOn₃ (C := motive) v₁ v₂ v₃ nil @fun _ x y z xs ys zs _ => cons x y z xs ys zs

/-- Cast a vector to an array. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b87ce21528040692f32c678c92162795ae9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
