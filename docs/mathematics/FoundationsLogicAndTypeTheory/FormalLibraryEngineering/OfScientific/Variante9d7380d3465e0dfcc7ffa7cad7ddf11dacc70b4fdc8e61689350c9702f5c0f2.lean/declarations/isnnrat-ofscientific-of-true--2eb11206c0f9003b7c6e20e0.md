# isNNRat_ofScientific_of_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaa04b24-69c3-c2c1-844d-281db0281b14",
  "kind": "theorem",
  "lexical_name": "isNNRat_ofScientific_of_true",
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
  "slug": "isnnrat-ofscientific-of-true--2eb11206c0f9003b7c6e20e0",
  "source": {
    "blob": "f42ec4454b96141090d9bdaff397190e6e900a63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variante9d7380d3465e0dfcc7ffa7cad7ddf11dacc70b4fdc8e61689350c9702f5c0f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb11206c0f9003b7c6e20e0f5eff813a0ab9db24f9cf2b5c14dbfa96be88179",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variante9d7380d3465e0dfcc7ffa7cad7ddf11dacc70b4fdc8e61689350c9702f5c0f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaa04b24-69c3-c2c1-844d-281db0281b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNNRat_ofScientific_of_true [DivisionSemiring α] :
    {m e : ℕ} → {n : ℕ} → {d : ℕ} →
    IsNNRat (NNRat.divNat m (10 ^ e) : α) n d → IsNNRat (OfScientific.ofScientific m true e : α) n d
  | _, _, _, _, ⟨_, eq⟩ => ⟨‹_›, by rwa [NNRatCast.ofScientific_eq_ite, ite_eq_left rfl]⟩

-- see note [norm_num lemma function equality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variante9d7380d3465e0dfcc7ffa7cad7ddf11dacc70b4fdc8e61689350c9702f5c0f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfScientific/Variante9d7380d3465e0dfcc7ffa7cad7ddf11dacc70b4fdc8e61689350c9702f5c0f2.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42ec4454b96141090d9bdaff397190e6e900a63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
