# ExtraDegeneracy.s

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58b91a8b365635ee0f7fef70da40dd5ddb8c43f66f4854d4336dbee790c04512",
  "kind": "def",
  "lexical_name": "ExtraDegeneracy.s",
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
  "slug": "extradegeneracy-s--e2b906e492eb95f1cc706dcb",
  "source": {
    "blob": "ef3f477b8fce655263952684b0f4563ec9874815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 264,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2b906e492eb95f1cc706dcb5ea5a7a9ee188e76f2646f07852cdaeaec246372",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58b91a8b365635ee0f7fef70da40dd5ddb8c43f66f4854d4336dbee790c04512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ExtraDegeneracy.s (n : ℕ) :
    f.cechNerve.obj (op [n]) ⟶ f.cechNerve.obj (op [n + 1]) :=
  WidePullback.lift (WidePullback.base _)
    (fun i =>
      dite (i = 0)
        (fun _ => WidePullback.base _ ≫ S.section_)
        (fun h => WidePullback.π _ (i.pred h)))
    fun i => by
      dsimp
      split_ifs with h
      · subst h
        simp only [assoc, SplitEpi.id, comp_id]
      · simp only [WidePullback.π_arrow]
#align category_theory.arrow.augmented_cech_nerve.extra_degeneracy.s CategoryTheory.Arrow.AugmentedCechNerve.ExtraDegeneracy.s

-- porting note: @[simp] removed as the linter complains the LHS is not in normal form
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3f477b8fce655263952684b0f4563ec9874815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
