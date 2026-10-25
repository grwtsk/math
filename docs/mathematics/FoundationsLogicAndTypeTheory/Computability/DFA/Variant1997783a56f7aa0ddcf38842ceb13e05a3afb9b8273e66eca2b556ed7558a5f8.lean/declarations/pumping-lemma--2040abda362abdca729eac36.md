# pumping_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c41ac067-f3fe-eac8-f62c-4dc6dc453a4a",
  "kind": "theorem",
  "lexical_name": "pumping_lemma",
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
  "slug": "pumping-lemma--2040abda362abdca729eac36",
  "source": {
    "blob": "99a7648a0831527181ca64f13ca2d204feaf634a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2040abda362abdca729eac360c646b6fc3a3a253b23ecb5eed294650a2c4e965",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c41ac067-f3fe-eac8-f62c-4dc6dc453a4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pumping_lemma [Fintype σ] {x : List α} (hx : x ∈ M.accepts)
    (hlen : Fintype.card σ ≤ List.length x) :
    ∃ a b c,
      x = a ++ b ++ c ∧
        a.length + b.length ≤ Fintype.card σ ∧ b ≠ [] ∧ {a} * {b}∗ * {c} ≤ M.accepts := by
  obtain ⟨_, a, b, c, hx, hlen, hnil, rfl, hb, hc⟩ := M.evalFrom_split (s := M.start) hlen rfl
  use a, b, c, hx, hlen, hnil
  intro y hy
  rw [Language.mem_mul] at hy
  rcases hy with ⟨ab, hab, c', hc', rfl⟩
  rw [Language.mem_mul] at hab
  rcases hab with ⟨a', ha', b', hb', rfl⟩
  rw [Set.mem_singleton_iff] at ha' hc'
  subst ha' hc'
  have h := M.evalFrom_of_pow hb hb'
  rwa [mem_accepts, eval, evalFrom_of_append, evalFrom_of_append, h, hc]

section Maps

variable {α' σ' : Type*}

/--
`M.comap f` pulls back the alphabet of `M` along `f`. In other words, it applies `f` to the input
before passing it to `M`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variant1997783a56f7aa0ddcf38842ceb13e05a3afb9b8273e66eca2b556ed7558a5f8.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99a7648a0831527181ca64f13ca2d204feaf634a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
