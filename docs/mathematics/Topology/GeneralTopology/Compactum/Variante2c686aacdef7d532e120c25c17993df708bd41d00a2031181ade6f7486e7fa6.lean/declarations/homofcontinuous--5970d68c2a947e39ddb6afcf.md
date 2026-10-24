# homOfContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab12d08b343c5d8adf50af195df4da8eaffbaaafcea791556790edbb26181079",
  "kind": "def",
  "lexical_name": "homOfContinuous",
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
  "slug": "homofcontinuous--5970d68c2a947e39ddb6afcf",
  "source": {
    "blob": "2f797227f08c2d351198da1b4a65a9bbf5d2f0a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 405,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5970d68c2a947e39ddb6afcf7b8004101acc208d1ab9a69d59b5073146d1f845",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab12d08b343c5d8adf50af195df4da8eaffbaaafcea791556790edbb26181079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homOfContinuous {X Y : Compactum} (f : X → Y) (cont : Continuous f) : X ⟶ Y :=
  { f
    h := by
      rw [continuous_iff_ultrafilter] at cont
      ext (F : Ultrafilter X)
      specialize cont (X.str F) F (le_nhds_of_str_eq F (X.str F) rfl)
      simp only [types_comp_apply, ofTypeFunctor_map]
      exact str_eq_of_le_nhds (Ultrafilter.map f F) _ cont }

end Compactum

/-- The functor functor from Compactum to CompHaus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variante2c686aacdef7d532e120c25c17993df708bd41d00a2031181ade6f7486e7fa6.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f797227f08c2d351198da1b4a65a9bbf5d2f0a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
