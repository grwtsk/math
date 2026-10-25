# LawfulOrderInf.of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7430aec-b2ef-996b-0e3c-5a309366b95b",
  "kind": "theorem",
  "lexical_name": "LawfulOrderInf.of_lt",
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
  "slug": "lawfulorderinf-of-lt--05e2e4c4b100ebd499da1c60",
  "source": {
    "blob": "c6e7641015e2e776786956a91001f2c8bc1c917a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variant182f26971f03791d96e25545486d069fb159c9d48b6245b1c45f0f8624d38977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e2e4c4b100ebd499da1c60eb9b012fe3a416d120849c07e6e1c8de2a64aecf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variant182f26971f03791d96e25545486d069fb159c9d48b6245b1c45f0f8624d38977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7430aec-b2ef-996b-0e3c-5a309366b95b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem LawfulOrderInf.of_lt {α : Type u} [Min α] [LT α]
    (min_lt_iff : ∀ a b c : α, min b c < a ↔ b < a ∨ c < a) :
    haveI := LE.ofLT α
    LawfulOrderInf α :=
  letI := LE.ofLT α
  { le_min_iff a b c := by
      open Classical in
      simp only [LE.le, ← not_or, Decidable.not_iff_not]
      simpa [Decidable.imp_iff_not_or] using min_lt_iff a b c }

/--
Derives a `LawfulOrderMin α` instance for `LE.ofLT` from two properties involving
`LT α` and `Min α` instances.

The produced instance entails `LawfulOrderInf α` and `MinEqOr α`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variant182f26971f03791d96e25545486d069fb159c9d48b6245b1c45f0f8624d38977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Factories/Variant182f26971f03791d96e25545486d069fb159c9d48b6245b1c45f0f8624d38977.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e7641015e2e776786956a91001f2c8bc1c917a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
