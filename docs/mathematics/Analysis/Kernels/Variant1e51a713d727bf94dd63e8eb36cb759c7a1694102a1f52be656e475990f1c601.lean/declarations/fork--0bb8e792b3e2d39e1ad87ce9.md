# fork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed115b08564e0c46b04acd14dd4fecb181a207b3bae8a70be208bce87396e316",
  "kind": "def",
  "lexical_name": "fork",
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
  "slug": "fork--0bb8e792b3e2d39e1ad87ce9",
  "source": {
    "blob": "6298046e4f2620c99fad0c242b020241906d42b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bb8e792b3e2d39e1ad87ce96c66e429246dadadab75660207ed4516134695fc",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed115b08564e0c46b04acd14dd4fecb181a207b3bae8a70be208bce87396e316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fork {V W : SemiNormedGroupCat.{u}} (f g : V ⟶ W) : Fork f g :=
  @Fork.ofι _ _ _ _ _ _ (of (f - g : NormedAddGroupHom V W).ker)
    (NormedAddGroupHom.incl (f - g).ker) <| by
    -- porting note: not needed in mathlib3
    change NormedAddGroupHom V W at f g
    ext v
    have : v.1 ∈ (f - g).ker := v.2
    simpa only [NormedAddGroupHom.incl_apply, Pi.zero_apply, coe_comp, NormedAddGroupHom.coe_zero,
      NormedAddGroupHom.mem_ker, NormedAddGroupHom.coe_sub, Pi.sub_apply,
      sub_eq_zero] using this
set_option linter.uppercaseLean3 false in
#align SemiNormedGroup.fork SemiNormedGroupCat.fork

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6298046e4f2620c99fad0c242b020241906d42b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
