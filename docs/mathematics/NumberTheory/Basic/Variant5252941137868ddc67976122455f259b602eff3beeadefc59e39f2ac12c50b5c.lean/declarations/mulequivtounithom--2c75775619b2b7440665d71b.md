# mulEquivToUnitHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d71c329648eeaf59d118efc6bd8af5a57c3ed20d0fe88a1329e34b9b2280bfd0",
  "kind": "def",
  "lexical_name": "mulEquivToUnitHom",
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
  "slug": "mulequivtounithom--2c75775619b2b7440665d71b",
  "source": {
    "blob": "164e182669ae5f4557ace7f89a11deef80508f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 368,
    "path": "GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c75775619b2b7440665d71b708c7a34e14e8be186fb50f891650307ab6366d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d71c329648eeaf59d118efc6bd8af5a57c3ed20d0fe88a1329e34b9b2280bfd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulEquivToUnitHom : MulChar R R' ≃* (Rˣ →* R'ˣ) :=
  { equivToUnitHom with
    map_mul' := by
      intro χ ψ
      ext
      simp only [Equiv.toFun_as_coe, coe_equivToUnitHom, coeToFun_mul, Pi.mul_apply,
        MonoidHom.mul_apply, Units.val_mul]
  }

end Group


/-!
### Properties of multiplicative characters

We introduce the properties of being nontrivial or quadratic and prove
some basic facts about them.

We now (mostly) assume that the target is a commutative ring.
-/


section Properties

section nontrivial

variable {R : Type*} [CommMonoid R] {R' : Type*} [CommMonoidWithZero R']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164e182669ae5f4557ace7f89a11deef80508f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
