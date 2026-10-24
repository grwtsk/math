# gcd_dvd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:861dfe64-a203-45c8-61d5-7aee2113a7e8",
  "kind": "theorem",
  "lexical_name": "gcd_dvd_left",
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
  "slug": "gcd-dvd-left--bd50cd5a492447c2372ce1de",
  "source": {
    "blob": "88e611fe03c393d5a12418594d8eb1dc243c0b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 199,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd50cd5a492447c2372ce1defc2d831abbfae1c51a7b579284993a4c8dc83080",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:861dfe64-a203-45c8-61d5-7aee2113a7e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_dvd_left : gcd x y ∣ x :=
  (Submodule.IsPrincipal.mem_iff_generator_dvd _).mp (Ideal.subset_span (by simp))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variantcaf410a60e1f38fda0a23422da35bf3d475b8bb3bb877360df0366dd335cbb27.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e611fe03c393d5a12418594d8eb1dc243c0b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
