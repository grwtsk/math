# pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8abc4db4781ab967f726a582a4740ce76aa2a4df4961de2500f808f0e21e5586",
  "kind": "def",
  "lexical_name": "pairing",
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
  "slug": "pairing--4f32ab0fd560e9f4a38e5766",
  "source": {
    "blob": "9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f32ab0fd560e9f4a38e57668d804c7e5fa5b2f129245f6ac8e072619593cc3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8abc4db4781ab967f726a582a4740ce76aa2a4df4961de2500f808f0e21e5586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pairing (u v : ℕ →₀ R) : R := u.sum (fun k x => x * v k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
