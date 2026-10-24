# inductionOn₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef65ce8eaba8e843fd9524940370fbc8ea5b8ef7ac1e55bb4aae19085b5bbaaf",
  "kind": "def",
  "lexical_name": "inductionOn₂",
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
  "slug": "inductionon--0cdff6aef6a0fc770f063754",
  "source": {
    "blob": "59caef7be1ea63c1051d749ce1c86cafcd44e3cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 482,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cdff6aef6a0fc770f0637542bf1211180877f04ca4a8834ae2108408847e631",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef65ce8eaba8e843fd9524940370fbc8ea5b8ef7ac1e55bb4aae19085b5bbaaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inductionOn₂ {C : ∀ {n}, Vector α n → Vector β n → Sort*}
    (v : Vector α n) (w : Vector β n)
    (nil : C nil nil) (cons : ∀ {n a b} {x : Vector α n} {y}, C x y → C (a ::ᵥ x) (b ::ᵥ y)) :
    C v w := by
  -- porting notes: removed `generalizing`: already generalized
  induction' n with n ih
  · rcases v with ⟨_ | ⟨-, -⟩, - | -⟩
    rcases w with ⟨_ | ⟨-, -⟩, - | -⟩
    exact nil
  · rcases v with ⟨_ | ⟨a, v⟩, v_property⟩
    cases v_property
    rcases w with ⟨_ | ⟨b, w⟩, w_property⟩
    cases w_property
    apply @cons n _ _ ⟨v, (add_left_inj 1).mp v_property⟩ ⟨w, (add_left_inj 1).mp w_property⟩
    apply ih
#align vector.induction_on₂ Vector.inductionOn₂

/-- Define `C u v w` by induction on a triplet of vectors
`u : Vector α n`, `v : Vector β n`, and `w : Vector γ b`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantce850869f01857553fc24382e4294cda3db3a08aa28d1300675e58eb6ed444f3.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59caef7be1ea63c1051d749ce1c86cafcd44e3cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
