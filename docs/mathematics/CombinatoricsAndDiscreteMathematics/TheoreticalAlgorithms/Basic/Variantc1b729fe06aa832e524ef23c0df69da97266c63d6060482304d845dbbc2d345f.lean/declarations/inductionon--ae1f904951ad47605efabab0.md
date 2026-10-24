# inductionOn₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a15e8dddb2d7b19d59b922fe44743c0322db7f50d2b5699503a198ab7ce7746",
  "kind": "def",
  "lexical_name": "inductionOn₃",
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
  "slug": "inductionon--ae1f904951ad47605efabab0",
  "source": {
    "blob": "e8b87ce21528040692f32c678c92162795ae9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 473,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae1f904951ad47605efabab09d84a9ce4614aebf0d897d0f9876ca0a5f877635",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a15e8dddb2d7b19d59b922fe44743c0322db7f50d2b5699503a198ab7ce7746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inductionOn₃ {C : ∀ {n}, Vector α n → Vector β n → Vector γ n → Sort*}
    (u : Vector α n) (v : Vector β n) (w : Vector γ n) (nil : C nil nil nil)
    (cons : ∀ {n a b c} {x : Vector α n} {y z}, C x y z → C (a ::ᵥ x) (b ::ᵥ y) (c ::ᵥ z)) :
    C u v w := by
  induction n with
  | zero =>
    rcases u with ⟨_ | ⟨-, -⟩, - | -⟩
    rcases v with ⟨_ | ⟨-, -⟩, - | -⟩
    rcases w with ⟨_ | ⟨-, -⟩, - | -⟩
    exact nil
  | succ n ih =>
    rcases u with ⟨_ | ⟨a, u⟩, u_property⟩
    cases u_property
    rcases v with ⟨_ | ⟨b, v⟩, v_property⟩
    cases v_property
    rcases w with ⟨_ | ⟨c, w⟩, w_property⟩
    cases w_property
    apply
      @cons n _ _ _ ⟨u, (add_left_inj 1).mp u_property⟩ ⟨v, (add_left_inj 1).mp v_property⟩
        ⟨w, (add_left_inj 1).mp w_property⟩
    apply ih

/-- Define `motive v` by case-analysis on `v : Vector α n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b87ce21528040692f32c678c92162795ae9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
