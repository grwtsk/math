# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecc83d1811dfa079988c0c2e2383a6e8b43cbebc7f3367ae1f462c3c4bfb057a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bf2db0029890118dc2d2a4f4",
  "source": {
    "blob": "e5d7d906b295e04a6ff53bb39f281578c61ac236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2db0029890118dc2d2a4f4d14a1b296383b106cf7c9ef29307cacdea958c7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecc83d1811dfa079988c0c2e2383a6e8b43cbebc7f3367ae1f462c3c4bfb057a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SecondCountableTopology EReal :=
  have : SeparableSpace EReal := ⟨⟨_, countable_range _, denseRange_ratCast⟩⟩
  .of_separableSpace_orderTopology _

end EReal

namespace NNReal

/-!
Instances for `ℝ≥0` are inherited from the corresponding structures on the reals.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variant7ac050046d5bfd89d9ef5148f44adfc0508f9e28da7d504c5250219737302a64.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d7d906b295e04a6ff53bb39f281578c61ac236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
