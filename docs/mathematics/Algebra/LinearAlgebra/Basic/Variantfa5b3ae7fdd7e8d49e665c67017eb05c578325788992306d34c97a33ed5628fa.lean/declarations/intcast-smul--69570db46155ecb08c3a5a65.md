# intCast_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf249f6e-e3e2-b4bc-5055-f131e47a2d37",
  "kind": "theorem",
  "lexical_name": "intCast_smul",
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
  "slug": "intcast-smul--69570db46155ecb08c3a5a65",
  "source": {
    "blob": "89828f7f56ef1ea433756899bd799939d2f40cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 846,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69570db46155ecb08c3a5a65d8c05fc798e5038d75eb26cd05d93411742f9d13",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf249f6e-e3e2-b4bc-5055-f131e47a2d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_smul {k V : Type*} [CommRing k] [AddCommGroup V] [Module k V] (r : ℤ) (x : V) :
    (r : k) • x = r • x :=
  algebraMap_smul k r x
#align int_cast_smul intCast_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfa5b3ae7fdd7e8d49e665c67017eb05c578325788992306d34c97a33ed5628fa.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89828f7f56ef1ea433756899bd799939d2f40cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
