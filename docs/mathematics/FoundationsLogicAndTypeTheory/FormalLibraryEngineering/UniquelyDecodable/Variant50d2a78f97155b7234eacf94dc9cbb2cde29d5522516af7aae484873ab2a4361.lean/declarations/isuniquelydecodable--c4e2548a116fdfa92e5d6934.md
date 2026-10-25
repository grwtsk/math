# IsUniquelyDecodable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e116fa8fb5bddea779a2265928fb7e92e415f093c58316c6ddc526bf32aa0517",
  "kind": "def",
  "lexical_name": "IsUniquelyDecodable",
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
  "slug": "isuniquelydecodable--c4e2548a116fdfa92e5d6934",
  "source": {
    "blob": "0d15e0a331b29293610d2e8ab93b1360d5ef59c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniquelyDecodable/Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4e2548a116fdfa92e5d69344ef6c88c4689aec8df0605c88665eb52a7227350",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniquelyDecodable/Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e116fa8fb5bddea779a2265928fb7e92e415f093c58316c6ddc526bf32aa0517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsUniquelyDecodable (S : Set (List α)) : Prop :=
  ∀ (L₁ L₂ : List (List α)),
    (∀ w ∈ L₁, w ∈ S) → (∀ w ∈ L₂, w ∈ S) →
    L₁.flatten = L₂.flatten → L₁ = L₂

@[deprecated (since := "2026-08-16")] alias UniquelyDecodable := IsUniquelyDecodable

variable {S : Set (List α)}

/-- If a code is uniquely decodable, it does not contain the empty string.

The empty string can be "decoded" as either zero or two copies of itself,
violating unique decodability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniquelyDecodable/Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UniquelyDecodable/Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d15e0a331b29293610d2e8ab93b1360d5ef59c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
