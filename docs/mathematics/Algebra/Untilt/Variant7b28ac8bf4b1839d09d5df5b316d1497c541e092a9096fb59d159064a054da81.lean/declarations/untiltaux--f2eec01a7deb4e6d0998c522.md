# untiltAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a51c0d8701ea2c4bac4f645342aa328303e8e92d1409effafac1e35057af656",
  "kind": "def",
  "lexical_name": "untiltAux",
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
  "slug": "untiltaux--f2eec01a7deb4e6d0998c522",
  "source": {
    "blob": "838eedf603a7b219fff35956a254c2ff4dddcc6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2eec01a7deb4e6d0998c52286acb1f19ab14a650932ecc7d88bff89014ca2ba",
  "verification": {
    "reference": "docs/verification/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a51c0d8701ea2c4bac4f645342aa328303e8e92d1409effafac1e35057af656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def untiltAux (x : PreTilt O p) (n : ℕ) : O :=
  match n with
  | 0 => 1
  | n + 1 =>
  (Quotient.out (coeff (ModP O p) _ n x)) ^ (p ^ n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838eedf603a7b219fff35956a254c2ff4dddcc6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
