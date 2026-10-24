# UniqueFactorizationDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f35c4d92015cd9d8bac7987826d53df995c0acb0b437c0590fa706910005a24",
  "kind": "structure",
  "lexical_name": "UniqueFactorizationDomain",
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
  "slug": "uniquefactorizationdomain--7d81cf9a589ec8ee06c36e94",
  "source": {
    "blob": "5d0534abce74446e5a85f07844dab1d234d868fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 223,
    "path": "GRWTSK/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d81cf9a589ec8ee06c36e943a41164395960037529eea5f94cdad7b5931ee94",
  "verification": {
    "reference": "docs/verification/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f35c4d92015cd9d8bac7987826d53df995c0acb0b437c0590fa706910005a24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniqueFactorizationDomain (R : Type _)
  [CommRing R] [IsDomain R] [UniqueFactorizationMonoid R]

section
/--
info: Try this: variable? [UniqueFactorizationDomain R] => [CommRing R] [IsDomain R] [UniqueFactorizationMonoid R]
-/
#guard_msgs in
variable? [UniqueFactorizationDomain R]
end

section
#guard_msgs in
variable? [UniqueFactorizationDomain R] => [CommRing R] [IsDomain R] [UniqueFactorizationMonoid R]
end

section
/--
error: invalid binder annotation, type is not a class instance
  UniqueFactorizationDomain R
use the command `set_option checkBinderAnnotations false` to disable the check
-/
#guard_msgs in
variable? [UniqueFactorizationDomain R] =>
  [CommRing R] [IsDomain R] [UniqueFactorizationMonoid R] [UniqueFactorizationDomain R]
end

section
/-!
Test that unused variables are not reported for the variable list either before or after `=>`.
-/

/-- info: Try this: variable? {α : _} => {α : _} -/
#guard_msgs in
variable? {α : _}

#guard_msgs in
variable? {α : _} => {α : _}
end

section
/-!
Test that `Sort*` works. This creates new universe level variables, so we need
to be sure that the state is reset when testing what comes after the `=>`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0534abce74446e5a85f07844dab1d234d868fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
