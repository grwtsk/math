# precision_roundDown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8962ced9-dca5-2834-3f01-5fd9e036bf7c",
  "kind": "theorem",
  "lexical_name": "precision_roundDown",
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
  "slug": "precision-rounddown--834952a7d26d506cd1576dd7",
  "source": {
    "blob": "9709d5fac7895cf04e157d8bcf1ea71f8497fb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:834952a7d26d506cd1576dd72fa47c600d0584728fbb3df5afe21cb44f4d7db1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8962ced9-dca5-2834-3f01-5fd9e036bf7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem precision_roundDown {x : Dyadic} {prec : Int} : (roundDown x prec).precision ≤ some prec := by
  unfold roundDown
  match x with
  | zero => simp [precision]
  | ofOdd n k hn =>
    dsimp
    split
    · rename_i n' h
      by_cases h' : n >>> n' = 0
      · simp [h']
      · exact precision_ofIntWithPrec_le h' _
    · simp [precision]
      omega

-- This theorem would characterize `roundDown` in terms of the order and `precision`.
-- theorem le_roundDown {x y : Dyadic} {prec : Int} (h : y.precision ≤ some prec) (h' : y ≤ x) :
--     y ≤ x.roundDown prec := sorry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9709d5fac7895cf04e157d8bcf1ea71f8497fb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
