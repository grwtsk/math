# GrahamConjecture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f5ce6c1ac408768e0fc2d74ec4af0f86700773b24bf397cc38f6dd5b5312961",
  "kind": "def",
  "lexical_name": "GrahamConjecture",
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
  "slug": "grahamconjecture--fd7c0915eebd3b5a83d4b085",
  "source": {
    "blob": "a7f07f5b0e554e56e44781a9714dc2100afc34cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7c0915eebd3b5a83d4b085503c4b70f75947ed8dd7df7dcdb79af6d53e9b9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f5ce6c1ac408768e0fc2d74ec4af0f86700773b24bf397cc38f6dd5b5312961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrahamConjecture (n : ℕ) (f : ℕ → ℕ) : Prop :=
  n ≠ 0 → StrictMonoOn f (Set.Iio n) → ∃ i < n, ∃ j < n, (f i).gcd (f j) * n ≤ f i

/-- The special case of Graham's conjecture where all numbers are squarefree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7f07f5b0e554e56e44781a9714dc2100afc34cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
