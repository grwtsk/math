# commGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7686eef5ee5cdad072d4ea83997cc0d9e18f4dd2a89dcff24d552f1b37a2e7c",
  "kind": "instance",
  "lexical_name": "commGroup",
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
  "slug": "commgroup--07a2c349ca9e193b3d257dea",
  "source": {
    "blob": "f6ae1c63f35d57a1725a57f662344e2388340fec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07a2c349ca9e193b3d257deae6772b525c58815fa891b30c96dc978da9b2998c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7686eef5ee5cdad072d4ea83997cc0d9e18f4dd2a89dcff24d552f1b37a2e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commGroup : CommGroup (Abelianization G) :=
  { QuotientGroup.Quotient.group _ with
    mul_comm := fun x y =>
      Quotient.inductionOn₂' x y fun a b =>
        Quotient.sound' <|
          QuotientGroup.leftRel_apply.mpr <|
            Subgroup.subset_closure
              ⟨b⁻¹, Subgroup.mem_top b⁻¹, a⁻¹, Subgroup.mem_top a⁻¹, by group⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abelianization/Variant3ffbc6cc306bddf44a09be1872290b4e57fd2b022066f432050751351294afb7.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ae1c63f35d57a1725a57f662344e2388340fec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
