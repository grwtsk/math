# Trust boundary and conformance foundation

## Foundation

The repository keeps Lean `leanprover/lean4:v4.33.0`, compiler commit
`d8b18978322de05a8f3dba51ef03cf5461676c17`, and Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`. The lockfile and toolchain file are
foundation inputs. Existing dependency objects may support a declared cached-
dependency replay; they are not evidence of a cold dependency-source rebuild.

The owned-declaration policy permits only `propext`, `Classical.choice`, and
`Quot.sound` in its stated scope and retains its narrowly source-bound generated
runtime handling. This migration does not broaden that policy. The retained
2026-10-14 replay elaborated its exact 289-source library snapshot at trust zero
with fatal warnings, then the owned audit rejected 18 compiler-generated
partial declarations. New and changed sources are outside that receipt until a
fresh replay is completed. Formal repository acceptance is therefore blocked.

The externally supplied migration/addendum documents are authorization and
policy inputs. Their SHA-256 identities are recorded in the rule registry. The
documents' own descriptions of repositories, external formalizations, tools,
or successful checks are not imported as evidence; each implementation claim
requires a current local observation.

## Meaning and binding

Exact source bytes and parsed names do not constitute a complete Lean semantic
map. Repository-wide coverage must include owning modules, resolved constants
and local binders, universes, elaborated types, implicit arguments, instances,
coercions, notation and macro scopes, relevant options, generated declarations,
and proof dependencies. Unsupported source mappings must be gaps, not guessed
bindings. That complete exporter is not implemented in the current snapshot.

## Trusted statements

An intended theorem contract must be maintained outside candidate proof
influence. Comparison must cover the definitions on which the statement
depends, universes, binders, hypotheses, conclusion, attributes, notation and
instance resolution. The current migration inventory records source-level
declarations, but it is not an independent elaborated trusted-statement
environment. `CONTRACT.001` therefore remains unimplemented.

## Checker adapters

`GRWTSK.Logic.Inference.RuleSoundness` formalizes rule soundness, the
acceptance contract of a certificate checker, and a byte-parser/execution
interface. `GRWTSK.Logic.Certificates.ArtifactDerivation` formalizes grounded
reconstruction. These checked generic results do not prove that a Python script,
JSON parser, filesystem read, process invocation, or native executable refines
the model. Each concrete adapter needs its own bridge; until then its checks are
operationally tested, not formally verified.

The remaining trusted computing base includes Lean's logic and kernel, compiler
and runtime portions actually used, serialization and process adapters, pinned
dependencies or their reused objects, operating system and sandbox, exact
inputs, and the human interpretation of intended mathematics and policy.

## Independent validation

No compatible repository-wide external proof checker and trusted-statement
comparison has been executed for Lean 4.33.0 here. No cold reconstruction and
proof check of the full pinned dependency source closure has been completed.
Cached objects support only the narrower receipts that explicitly declare their
reuse. Missing or incompatible independent tooling leaves the Independently
validated profile `NOT_RUN` or `UNKNOWN`; it does not authorize a toolchain
upgrade or a fabricated success.

Untrusted candidate builds can execute code. A future independent-validation
route must run candidate compilation with least privilege, validate exported
proof representations before use, and keep the trusted statement environment
outside candidate influence.
