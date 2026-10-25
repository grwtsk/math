# exists_code.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc09a24-239f-ee94-b2c4-c251d4abd326",
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
  "slug": "exists-code-comp--6012c85d572e18205a2efa5f",
  "source": {
    "blob": "a8c8040b3bf85ea393560e6de1a257c3b2450957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6012c85d572e18205a2efa5fff03faef9993989e68f9bd32c0b0faf7cda336c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc09a24-239f-ee94-b2c4-c251d4abd326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–266.

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
        simp [hg, hf, map_bind, seq_bind_eq, Function.comp_def]
        rfl⟩
  clear hf f; induction' n with n IH
  · exact ⟨nil, fun v => by simp [Vector.mOfFn, Bind.bind]; rfl⟩
  · obtain ⟨cg, hg₁⟩ := hg 0
    obtain ⟨cl, hl⟩ := IH fun i => hg i.succ
    exact
      ⟨cons cg cl, fun v => by
        simp [Vector.mOfFn, hg₁, map_bind, seq_bind_eq, bind_assoc, (· ∘ ·), hl]
        rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c8040b3bf85ea393560e6de1a257c3b2450957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
