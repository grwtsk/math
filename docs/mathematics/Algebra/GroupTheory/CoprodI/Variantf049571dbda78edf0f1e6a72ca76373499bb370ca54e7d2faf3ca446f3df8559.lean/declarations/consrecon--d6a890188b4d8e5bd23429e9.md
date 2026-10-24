# consRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f909cf502dccbb125e511fb90f7e85bb93e497aadabe0a76cbfa81adb65c51c",
  "kind": "def",
  "lexical_name": "consRecOn",
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
  "slug": "consrecon--d6a890188b4d8e5bd23429e9",
  "source": {
    "blob": "faae9fbe0da89dd14edad39462e48e55bb4b8171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 386,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6a890188b4d8e5bd23429e91ed629f1e9380f208b2e2a81f6a40f3f48e75d9e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f909cf502dccbb125e511fb90f7e85bb93e497aadabe0a76cbfa81adb65c51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def consRecOn {motive : Word M → Sort*} (w : Word M) (empty : motive empty)
    (cons : ∀ (i) (m : M i) (w) h1 h2, motive w → motive (cons m w h1 h2)) :
    motive w := by
  rcases w with ⟨w, h1, h2⟩
  induction w with
  | nil => exact empty
  | cons m w ih =>
    refine cons m.1 m.2 ⟨w, fun _ hl => h1 _ (List.mem_cons_of_mem _ hl), h2.tail⟩ ?_ ?_ (ih _ _)
    · rw [List.isChain_cons] at h2
      simp only [fstIdx, ne_eq, Option.map_eq_some_iff,
        Sigma.exists, exists_and_right, exists_eq_right, not_exists]
      intro m' hm'
      exact h2.1 _ hm' rfl
    · exact h1 _ List.mem_cons_self

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variantf049571dbda78edf0f1e6a72ca76373499bb370ca54e7d2faf3ca446f3df8559.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faae9fbe0da89dd14edad39462e48e55bb4b8171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
