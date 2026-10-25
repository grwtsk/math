# iselect_eq_default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46ecc1e8a814e8ee4f236fefdfc3daa32b6200a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac241714-f7c2-9a2a-078a-d2cf09e106a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9ebb969-b8e2-8be7-0d48-9add883275a5",
  "kind": "theorem",
  "lexical_name": "iselect_eq_default",
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
  "slug": "iselect-eq-default--6ecab4fadd53fc53c5fb637a",
  "source": {
    "blob": "46ecc1e8a814e8ee4f236fefdfc3daa32b6200a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ecab4fadd53fc53c5fb637aada035057f2941e467c4142581b8ae30d72ac02f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9ebb969-b8e2-8be7-0d48-9add883275a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iselect_eq_default [DecidableEq F.A] [Inhabited (M F)] (ps : Path F) (x : M F)
    (h : ¬IsPath ps x) : iselect ps x = head default := by
  induction ps generalizing x with
  | nil =>
    exfalso
    apply h
    constructor
  | cons ps_hd ps_tail ps_ih =>
    obtain ⟨a, i⟩ := ps_hd
    induction x using PFunctor.M.casesOn' with | _ x_a x_f
    simp only [iselect, isubtree] at ps_ih ⊢
    by_cases h'' : a = x_a
    · subst x_a
      simp only [dite_eq_left, casesOn_mk']
      rw [ps_ih]
      intro h'
      apply h
      constructor <;> try rfl
      apply h'
    · simp [*]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant9f85d534bda332dd45928ffb8d024e3ed82210344dcf337b56c4ddec36e45126.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ecc1e8a814e8ee4f236fefdfc3daa32b6200a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
