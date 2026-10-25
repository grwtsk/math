# exists_code.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "958b743e6c161e2c6fc87571be26fd8b27ecf211",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8b76048-a1c7-5893-a427-c4d9b45b21cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55b73f2d-cf18-90a8-cdf2-5be7a5a57155",
  "kind": "theorem",
  "lexical_name": "exists_code.comp",
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
  "slug": "exists-code-comp--3f0e24f4da6db7af85628a87",
  "source": {
    "blob": "958b743e6c161e2c6fc87571be26fd8b27ecf211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f0e24f4da6db7af85628a87e75a1581d4556667a6cbd4bcf950465a27d4f191",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b73f2d-cf18-90a8-cdf2-5be7a5a57155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_code.comp {m n} {f : List.Vector ℕ n →. ℕ} {g : Fin n → List.Vector ℕ m →. ℕ}
    (hf : ∃ c : Code, ∀ v : List.Vector ℕ n, c.eval v.1 = pure <$> f v)
    (hg : ∀ i, ∃ c : Code, ∀ v : List.Vector ℕ m, c.eval v.1 = pure <$> g i v) :
    ∃ c : Code, ∀ v : List.Vector ℕ m,
      c.eval v.1 = pure <$> ((List.Vector.mOfFn fun i => g i v) >>= f) := by
  rsuffices ⟨cg, hg⟩ :
    ∃ c : Code, ∀ v : List.Vector ℕ m,
      c.eval v.1 = Subtype.val <$> List.Vector.mOfFn fun i => g i v
  · obtain ⟨cf, hf⟩ := hf
    exact
      ⟨cf.comp cg, fun v => by
        simp [hg, hf, map_bind]
        rfl⟩
  clear hf f
  induction n with
  | zero => exact ⟨nil, fun v => by simp [Vector.mOfFn]; rfl⟩
  | succ n IH =>
    obtain ⟨cg, hg₁⟩ := hg 0
    obtain ⟨cl, hl⟩ := IH fun i => hg i.succ
    exact
      ⟨cons cg cl, fun v => by
        simp [Vector.mOfFn, hg₁, hl]
        rfl⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958b743e6c161e2c6fc87571be26fd8b27ecf211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
