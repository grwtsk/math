# emultiplicity_choose'

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
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c16a5f60-6591-bb92-ab04-2f689e81e785",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b584d3c0-fd6a-b764-b2ee-6435636bb6ff",
  "kind": "theorem",
  "lexical_name": "emultiplicity_choose'",
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
  "slug": "emultiplicity-choose--2f722291a7a5630aff736dee",
  "source": {
    "blob": "2975d07281c04d2ae9b838ff387d6ec83a201ed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f722291a7a5630aff736dee264f20fa22a3877dce676ddf24add4f2eaf62eb9",
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

Occurrence: `result:b584d3c0-fd6a-b764-b2ee-6435636bb6ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_choose' {p n k b : ℕ} (hp : p.Prime) (hnb : log p (n + k) < b) :
    emultiplicity p (choose (n + k) k) = #{i ∈ Ico 1 b | p ^ i ≤ k % p ^ i + n % p ^ i} := by
  have h₁ :
      emultiplicity p (choose (n + k) k) + emultiplicity p (k ! * n !) =
        #{i ∈ Ico 1 b | p ^ i ≤ k % p ^ i + n % p ^ i} + emultiplicity p (k ! * n !) := by
    rw [← hp.emultiplicity_mul, ← mul_assoc]
    have := (add_tsub_cancel_right n k) ▸ choose_mul_factorial_mul_factorial (le_add_left k n)
    rw [this, hp.emultiplicity_factorial hnb, hp.emultiplicity_mul,
      hp.emultiplicity_factorial ((log_mono_right (le_add_left k n)).trans_lt hnb),
      hp.emultiplicity_factorial ((log_mono_right (le_add_left n k)).trans_lt
      (add_comm n k ▸ hnb)), multiplicity_choose_aux hp (le_add_left k n)]
    simp [add_comm]
  refine WithTop.add_right_cancel ?_ h₁
  apply finiteMultiplicity_iff_emultiplicity_ne_top.1
  exact Nat.finiteMultiplicity_iff.2 ⟨hp.ne_one, mul_pos (factorial_pos k) (factorial_pos n)⟩

/-- The multiplicity of `p` in `choose n k` is the number of carries when `k` and `n - k`
  are added in base `p`. The set is expressed by filtering `Ico 1 b` where `b`
  is any bound greater than `log p n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2975d07281c04d2ae9b838ff387d6ec83a201ed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
