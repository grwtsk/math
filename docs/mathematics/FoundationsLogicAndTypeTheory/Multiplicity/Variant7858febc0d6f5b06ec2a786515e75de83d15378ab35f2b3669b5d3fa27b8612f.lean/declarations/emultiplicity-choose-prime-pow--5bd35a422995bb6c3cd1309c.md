# emultiplicity_choose_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2975d07281c04d2ae9b838ff387d6ec83a201ed3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bed1ed2-5977-c54f-9454-5be2f73ae3ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0277c5ec-fb42-1b5e-3161-16c7c73a5c7d",
  "kind": "theorem",
  "lexical_name": "emultiplicity_choose_prime_pow",
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
  "slug": "emultiplicity-choose-prime-pow--5bd35a422995bb6c3cd1309c",
  "source": {
    "blob": "2975d07281c04d2ae9b838ff387d6ec83a201ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bd35a422995bb6c3cd1309c896e9607411cf3d79811369b5f76a158885f1671",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0277c5ec-fb42-1b5e-3161-16c7c73a5c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_choose_prime_pow {p n k : ℕ} (hp : p.Prime) (hkn : k ≤ p ^ n) (hk0 : k ≠ 0) :
    emultiplicity p (choose (p ^ n) k) = ↑(n - multiplicity p k) := by
  push_cast
  rw [← emultiplicity_choose_prime_pow_add_emultiplicity hp hkn hk0,
    (finiteMultiplicity_iff.2 ⟨hp.ne_one, Nat.pos_of_ne_zero hk0⟩).emultiplicity_eq_multiplicity,
    (finiteMultiplicity_iff.2 ⟨hp.ne_one, choose_pos hkn⟩).emultiplicity_eq_multiplicity]
  norm_cast
  rw [Nat.add_sub_cancel_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2975d07281c04d2ae9b838ff387d6ec83a201ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
