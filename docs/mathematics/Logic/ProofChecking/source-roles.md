# Proof-checking source roles

Mathematical subject, source role, logical status, and verification outcome are
four different facts. The consolidation keeps them independently inspectable.

A reusable definition or theorem belongs in its mathematical library module.
A positive check imports that module and confirms an intended contract. A
negative control states a deliberately invalid proof attempt and succeeds only
when Lean rejects the intended mathematical defect. An audit driver inspects
declaration ownership, dependencies, or axioms without becoming part of the
public mathematical library.

These roles are represented physically below the relevant object:

```text
GRWTSK/<Subject>/<Object>/Checks/Positive/<Name>.lean
GRWTSK/<Subject>/<Object>/Checks/Negative/<Name>.lean
GRWTSK/<Subject>/<Object>/Checks/<AuditName>.lean
```

The public umbrella imports only library modules. Validation modules are run by
their cataloged entry points, and a missing import, missing file, syntax error,
or unavailable dependency does not count as a mathematical rejection.

See the [source-layout reference](../../../reference/source-layout.md) and the
[current consolidation report](../../../reference/lean-consolidation-report.md).

