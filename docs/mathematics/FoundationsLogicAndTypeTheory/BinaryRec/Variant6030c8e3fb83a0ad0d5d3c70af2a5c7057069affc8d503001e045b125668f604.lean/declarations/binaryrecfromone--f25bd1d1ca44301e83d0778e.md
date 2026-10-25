# binaryRecFromOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31b555ca63fa121db71dcde05d0123f81bba7b39ca0443b3beb4ca983cf39be1",
  "kind": "def",
  "lexical_name": "binaryRecFromOne",
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
  "slug": "binaryrecfromone--f25bd1d1ca44301e83d0778e",
  "source": {
    "blob": "f9405a0390ee025937b086d0893ec63c145df650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f25bd1d1ca44301e83d0778e1231250241609859856509c3b41317fa7f6ec74b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31b555ca63fa121db71dcde05d0123f81bba7b39ca0443b3beb4ca983cf39be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryRecFromOne {motive : Nat → Sort u} (zero : motive 0) (one : motive 1)
    (bit : ∀ b n, n ≠ 0 → motive n → motive (bit b n)) :
    ∀ n, motive n :=
  binaryRec' zero fun b n h ih =>
    if h' : n = 0 then
      have : n.bit b = Nat.bit true 0 := by
        rw [h', h h']
      congrArg motive this ▸ one
    else bit b n h' ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant6030c8e3fb83a0ad0d5d3c70af2a5c7057069affc8d503001e045b125668f604.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9405a0390ee025937b086d0893ec63c145df650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
