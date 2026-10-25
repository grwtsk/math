# go_get_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42dd2976533ac3f5a483178a603356641bf92e82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60dd0d08-9857-478d-55bc-f111f679c803",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60c014a3-fd3c-1e49-2db5-187460590122",
  "kind": "theorem",
  "lexical_name": "go_get_aux",
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
  "slug": "go-get-aux--3fe8545bcc483da98128b5fe",
  "source": {
    "blob": "42dd2976533ac3f5a483178a603356641bf92e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe8545bcc483da98128b5fed4e8d61f56996300e3e229a1de3dccbff8628885",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60c014a3-fd3c-1e49-2db5-187460590122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_get_aux {w : Nat} (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (discr : Ref aig)
    (lhs rhs : RefVec aig w) (s : RefVec aig curr) :
    ∀ (idx : Nat) (hidx : idx < curr) (hfoo),
      (go aig curr hcurr discr lhs rhs s).vec.get idx (by omega)
        =
      (s.get idx hidx).cast hfoo := by
  intro idx hidx
  generalize hgo : go aig curr hcurr discr lhs rhs s = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  · rw [← hgo]
    intros
    rw [go_get_aux (hidx := Nat.lt_succ_of_lt hidx) (hfoo := go_le_size ..)]
    rw [AIG.RefVec.get_push_ref_lt (hidx := hidx)]
    simp only [Ref.cast]
    rw [AIG.RefVec.get_cast]
    simp
  · rw [← hgo]
    simp only [Nat.le_refl, get]
    have : curr = w := by omega
    subst this
    simp
termination_by w - curr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant0dde477b1b5064b433379f9097af2eb2772da71f18a3fb1bddb113fa01cab3a4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42dd2976533ac3f5a483178a603356641bf92e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
