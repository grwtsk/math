# algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb2d73c294a4787f4cf8647a0e4df79f107e8d338b208868b02cfc619802b45",
  "kind": "instance",
  "lexical_name": "algebra",
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
  "slug": "algebra--007cfbe408d2c0081e50d44f",
  "source": {
    "blob": "85a4dce54fc3cf516f21e1c1611ce4e29f0bdec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:007cfbe408d2c0081e50d44f89dbde46371d1b057cc4acf1c8f4174e80555b70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb2d73c294a4787f4cf8647a0e4df79f107e8d338b208868b02cfc619802b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebra : Algebra R (Completion A) where
  algebraMap := (UniformSpace.Completion.coeRingHom : A →+* Completion A).comp (algebraMap R A)
  commutes' := fun r x =>
    Completion.induction_on x (isClosed_eq (continuous_const_mul _) (continuous_mul_const _))
      fun a => by
      simpa only [coe_mul] using! congr_arg ((↑) : A → Completion A) (Algebra.commutes r a)
  smul_def' := fun r x => congr_fun (map_smul_eq_mul_coe A R r) x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a4dce54fc3cf516f21e1c1611ce4e29f0bdec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
