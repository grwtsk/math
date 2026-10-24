# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91ddf0ba1aaca3af96204c8638da2053d4a13c26c4c6e047b8c06111f39778e3",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2dece18b903113fea3b5e688",
  "source": {
    "blob": "52ebc8c845957f01e051b1bb9082d0b4f11c104a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dece18b903113fea3b5e688c061ba377a5afe18ef77101cd717ac6dc1427514",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91ddf0ba1aaca3af96204c8638da2053d4a13c26c4c6e047b8c06111f39778e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {n : Type} [Fintype n] {X : Type} [Semiring X]
  (f : Matrix n n X → Matrix n n X) (A B : Matrix n n X) (h : A * B = 0) : f (A * B) = f 0 := by
  apply_fun f at h
  -- check that our β-reduction didn't mess things up:
  -- (previously `apply_fun` was producing `f (A.mul B) = f 0`)
  guard_hyp h :ₛ f (A * B) = f 0
  exact h

-- TODO
-- -- Verify that `apply_fun` works with `Fin.castSucc`, even though it has an implicit argument.
-- example (n : ℕ) (a b : Fin n) (H : a ≤ b) : a.castSucc ≤ b.castSucc :=
--   apply_fun Fin.castSucc at H
--   exact H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ApplyFun/Variant2835feda3691d4b92cbd9012a4efa802fb903d3f75e6aee6fd0e69ed0f22a9ee.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52ebc8c845957f01e051b1bb9082d0b4f11c104a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
