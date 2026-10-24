# Result.isNegNNRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2b233687a5e2f1dc3879fe08de56697f490b6033ccdcd43cb7dced2e0627ece",
  "kind": "def",
  "lexical_name": "Result.isNegNNRat",
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
  "slug": "result-isnegnnrat--104f5c3f66d3d52c1c82e208",
  "source": {
    "blob": "0f6b328574094be8ac34357633d5aaec21a6727d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 358,
    "path": "GRWTSK/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:104f5c3f66d3d52c1c82e208d0ea6970a4c0d556b2b3e7edacace67eef4f1210",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2b233687a5e2f1dc3879fe08de56697f490b6033ccdcd43cb7dced2e0627ece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[match_pattern, inline] def Result.isNegNNRat {α : Q(Type u)} {x : Q($α)} :
    ∀ (inst : Q(DivisionRing $α) := by assumption) (q : Rat) (n : Q(ℕ)) (d : Q(ℕ))
      (proof : Q(IsRat $x (.negOfNat $n) $d)), Result x := Result'.isNegNNRat

end

/-- The result is `z : ℤ` and `proof : isNat x z`. -/
-- Note the independent arguments `z : Q(ℤ)` and `n : ℤ`.
-- We ensure these are "the same" when calling.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f6b328574094be8ac34357633d5aaec21a6727d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
